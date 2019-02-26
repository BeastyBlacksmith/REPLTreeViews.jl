
macro iedit(x)
    :(iedit($(esc(x))))
end

function iedit(x)
    request(hastreeview(x) ? generateTreeView(x) : defaultrepr(x), isedit = true)
end

const changed_values = Dict{Any,Any}()

function reset_cv()
    global changed_values = Dict{Any,Any}()
end
