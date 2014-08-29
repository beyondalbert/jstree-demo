class HomeController < ApplicationController
  def index
  end

  def simple_tree
  end

  def tree_data
    fold_path = ActionController::Base.helpers.asset_path("fold.png")
    file_path = ActionController::Base.helpers.asset_path("file.png")
    files_set = [{id: 1, parent: '#', text: "手工用例", icon: fold_path},
      {id: 2, parent: 1, text: "主干用例", icon: fold_path},
      {id: 3, parent: 1, text: "suite2", icon: fold_path},
      {id: 4, parent: 2, text: "suite5", icon: fold_path},
      {id: 5, parent: 2, text: "用例1", icon: file_path, li_attr: {class: 'file'}},
      {id: 6, parent: 4, text: "suite5-case1", icon: file_path, li_attr: {class: 'file'}},
      {id: 7, parent: 3, text: "用例2", icon: file_path, li_attr: {class: 'file'}},
      {id: 8, parent: 3, text: "suite3", icon: fold_path},
      {id: 9, parent: 3, text: "用例4", icon: file_path, li_attr: {class: 'file'}},
      {id: 10, parent: 8, text: "用例3", icon: file_path, li_attr: {class: 'file'}}]

    respond_to do |format|
      format.json { render json: files_set }
    end
  end

  def new_file
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def move_node
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def show_file
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def show_fold
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def node_rename
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def destroy_node
    respond_to do |format|
      format.json { render json: {} }
    end
  end
end
