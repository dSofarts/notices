<#import "block/template.ftlh" as template>
<@template.template>
  <h2>Мои заметки</h2>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
    <#list notes as note>
      <a href="" class="col">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">${note.title}</h5>
            <p class="card-text">${note.text}</p>
            <#if note.dateOfCreated??><p class="card-subtitle mb-2 text-muted">${note.dateOfCreated.format('dd.MM.yyyy')}</p></#if>
          </div>
        </div>
      </a>
    </#list>
    </div>
</@template.template>