
macro iedit(x)
    :(iedit($(esc(x))))
end

function iedit(x)
    request(hastreeview(x) ? generateTreeView(x) : defaultrepr(x), isedit = true)
end
