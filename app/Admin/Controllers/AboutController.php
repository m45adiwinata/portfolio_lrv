<?php

namespace App\Admin\Controllers;

use App\About;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AboutController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\About';

    public function index(Content $content)
    {
        return $content
            ->header('About')
            ->description('registered')
            ->body($this->grid());
    }

    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('about')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */

    protected function grid()
    {
        $grid = new Grid(new About);

        $grid->column('id', __('Id'));
        $grid->column('aboutme', __('Aboutme'));
        $grid->column('total_funds', __('Total funds'));
        $grid->column('total_projects', __('Total projects'));
        $grid->column('total_volunteers', __('Total volunteers'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(About::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('aboutme', __('Aboutme'));
        $show->field('total_funds', __('Total funds'));
        $show->field('total_projects', __('Total projects'));
        $show->field('total_volunteers', __('Total volunteers'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new About);

        $form->textarea('aboutme', __('Aboutme'));
        $form->text('total_funds', __('Total funds'));
        $form->text('total_projects', __('Total projects'));
        $form->text('total_volunteers', __('Total volunteers'));
        $form->hasMany('skills', 'Skills', function (Form\NestedForm $form) {
            $form->text('name', 'Name');
            $form->number('value', 'Value')->min(0)->max(100);
        });

        return $form;
    }
}
