<div class="ui basic segment center aligned">
     <%= image_tag("MilRevolts400.png", :alt => "Mil Revolts", :class => "mbr-navbar__brand-img mbr-brand__img") %>
     <BR/><BR/><BR/>  
</div>
<div class="ui relaxed equal width grid">
  <div class="ui row">
    <div class="ui six wide column"></div>
      <div class="ui four wide column segment">
    

      <h2 class="ui center aligned dividing header teal">
       <i class="signup icon teal"></i>Registra't, crea el teu compte.
      </h2>



    <div class='ui form'>    
<%= simple_form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
<h4 class='ui header red'><i><%= f.error_notification %></i></h4>
 

        <div class="field">
          <%= f.label :nom %>
          <div class="ui left icon input">
          <%= f.text_field :nom, autofocus: true, required: true, placeholder:"Nom, com Josep, Joan,... "%>
          <i class="user icon"></i>
          </div>
        </div>
         <div class="field">
          <%= f.label :avatar %>
          <div class="ui left icon input">
          <%= f.file_field :avatar, autofocus: true, placeholder:"El teu Avatar"%>
          <i class="user circle icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :moto %>
          <div class="ui left icon input">
          <%= f.text_field :moto, autofocus: true, required: true, placeholder:"La teva moto, com GSR600, MT01, 390, Z1000,..."%>
          <i class="motorcycle icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :foto_de_la_teva_moto %>
          <div class="ui left icon input">
          <%= f.file_field :foto_moto, autofocus: true, placeholder:"La foto de la teva moto"%>
          <i class="motorcycle icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :localitat %>
          <div class="ui left icon input">
          <%= f.text_field :localitat, autofocus: true, required: true, placeholder:"A on resideixes, com BCN, BDN, Gavà, Terrassa,..."%>
          <i class="map marker alternate icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :data_de_naixement %>
          <div class="ui left icon input">
          <%= f.date_select :data_naixement, autofocus: true, required: true, placeholder:"Any del teu naixement", start_year: DateTime.now.year - 18, end_year: DateTime.now.year - 75 %>
          </div>
        </div>
        <div class="field">
          <%= f.label :email %>
          <div class="ui left icon input">
          <%= f.email_field :email, autofocus: true, placeholder:"El teu correu electrònic, com nom.cognom@email.com"%>
          <i class="at icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :password %>
          <div class="ui left icon input">
          <%= f.password_field :password, autocomplete: "off" ,placeholder:"Password"%>
          <i class="lock icon"></i>
          </div>
        </div>
        <div class="field">
          <%= f.label :password_confirmation %>
          <div class="ui left icon input">
          <%= f.password_field :password_confirmation, autocomplete: "off", placeholder:"Password confirmation"%>
          <i class="lock icon"></i>
          </div>
        </div>


        <div class="ui basic segment center aligned">
          <%= f.submit "ENVIA" ,class: "ui submit button teal", style: "margin-top:20px;" %>
        </div>

<% end %>

</div>
</div>
</div>
</div>


<BR/><BR/><BR/>  

</div>