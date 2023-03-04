<#import "block/template.ftlh" as template>
<@template.template>
  <form action="/update/${note.id}" method="post" class="mb-2">
    <div class="mb-3">
      <input type="hidden" value="${note.id}">
      <input type="text" name="title" class="form-control fw-bold" id="noteTitle" value="${note.title}" required><br>
      <textarea class="form-control" name="text" id="noteText" rows="20" required>${note.text}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">Сохранить изменения</button>
  </form>
  <form action="/delete/${note.id}" method="post">
    <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Удалить заметку</button>
  </form>
</@template.template>