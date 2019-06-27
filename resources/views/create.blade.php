@extends('layouts.app')


@section('content')

    <h3>Enter Your Url</h3>

    <form method = "post" >
    {{csrf_field()}}
    
        <input type="url" name="urlname" >
        <input type="submit" value = "Shorten Link">
    </form>

@stop