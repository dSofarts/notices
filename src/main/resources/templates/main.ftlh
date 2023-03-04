<#import "block/template.ftlh" as template>
<@template.template>
  <h2>Мои заметки</h2>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
    <#list notes as note>
      <a href="/${note.id}" class="col note">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">${note.title}</h5>
            <div class="card-text text-truncate">${note.text}</div>
          </div>
        </div>
      </a>
      <#else>
      <h4>Заметок нет!</h4>
    </#list>
    </div>
</@template.template>