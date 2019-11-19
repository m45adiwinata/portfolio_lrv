<?php

namespace App\Admin\Controllers;

use App\Experience;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

use App\About;

class ExperienceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Experience';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Experience);

        $grid->column('id', __('Id'));
        $grid->column('about_id', __('About id'));
        $grid->column('start', __('Start'));
        $grid->column('end', __('End'));
        $grid->column('position', __('Position'));
        $grid->column('job', __('Job'));
        $grid->column('location', __('Location'));
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
        $show = new Show(Experience::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('about_id', __('About id'));
        $show->field('start', __('Start'));
        $show->field('end', __('End'));
        $show->field('position', __('Position'));
        $show->field('job', __('Job'));
        $show->field('location', __('Location'));
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
        $form = new Form(new Experience);

        $about_id = About::get()->first()->id;
        $form->text('about_id', __('About id'))->default($about_id)->value($about_id)->readonly();
        $form->text('start', __('Start'));
        $form->text('end', __('End'));
        $form->text('position', __('Position'));
        $form->text('job', __('Job'));
        $form->text('location', __('Location'));

        return $form;
    }
}
