{extends file="main.tpl"}


{block name=content}  
    
        <div class="container">
                    <header class="major">
                        <h2>Dane transakcji</h2>
                    </header>
                </div>

    <div class="container">
        <section>
            <form action="{$conf->action_root}transactionSave" method="post">
                <fieldset>
                <div class="form">
                    <h4>Kwota</h4>
                    <input type="text" name="amount" id="amount" value="{$form->amount}" placeholder="Kwota" />
                    
                    <h4>Kategoria</h4>
                    <select name="category" id="category" value="{$form->category}">        
                    {foreach $categories as $c}
			<option >{$c}</option>
                         {/foreach}
                    </select>
                    <h4>Opis</h4>
                    <input type="text"  name="description" id="description" value="{$form->description}" placeholder="Opis" />
                    <ul class="actions">
                        <li><input style="margin-top: 1em;" type="submit" value="Zapisz" class="primary" /></li>
                    </ul>
          
                </fieldset>
                <input type="hidden" name="id" value="{$form->id}">    
            </form>
                    {include file='messages.tpl'}
</div>

{/block}