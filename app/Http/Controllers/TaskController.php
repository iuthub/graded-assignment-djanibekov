<?php

namespace App\Http\Controllers;

use App\Task;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $task = Task::orderBy('id', 'desc')->get();

        return view('layouts.index')->with('storedTasks', $task);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'newTask' => 'required|regex:/([a-zA-Z]+\s?\b){2,}/',
        ]);
        
        $task = new Task;
        
        $user = Auth::user();
        
        $task->name = $request->newTask;
        $user->tasks()->save($task);

        Session::flash('success', 'New task has been succesfully added!');

        return redirect()->route('task.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $task=Task::find($id);
        return view('layouts.edit')->with('taskToEdit', $task);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'updatedTask'=>'required|regex:/([a-zA-Z]+\s?\b){2,}/',
            
        ]);
        
        $task=Task::find($id);
        $task->name=$request->updatedTask;
        $task->save();
        
        Session::flash('success', 'UPDATED');
        
        return redirect()->route('task.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $task = Task::find($id);
        $task -> delete();

        Session::flash('success', 'Task "'.$task->name. '" DELETED');
        
        return redirect()->route('task.index');
    }
}
