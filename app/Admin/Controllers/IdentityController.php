<?php

namespace App\Admin\Controllers;

use App\Identity;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IdentityController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Identity';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */

    public function index(Content $content)
    {
        return $content
            ->header('Identity')
            ->description('registered')
            ->body($this->grid());
    }

    public function show($id, Content $content)
    {
        return $content
            ->header('Show')
            ->description('identity')
            ->body($this->detail($id));
    }

    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('identity')
            ->body($this->form());
    }

    protected function grid()
    {
        $grid = new Grid(new Identity);
        $grid->id('Id');
        $grid->name('Name');
        $grid->jobs('Jobs');
        $grid->birth_date('Birth Date');
        $grid->phone_number('Phone');
        $grid->email('Email');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Identity::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Identity);
        $form->text('name', 'Name');
        $form->text('jobs', 'Jobs');
        $form->textarea('description', 'Description')->rows(5);
        $form->date('birth_date', 'Birth Date');
        $form->mobile('phone_number', 'Phone Number')->options(['mask' => '9999 9999 99999']);
        $form->email('email', 'Email');
        $form->textarea('address', 'Address')->rows(3);
        $form->url('facebook', 'Facebook');
        $form->url('twitter', 'Twitter');
        $form->url('linkedin', 'LinkedIn');

        return $form;
    }
}
