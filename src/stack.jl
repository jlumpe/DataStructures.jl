# stacks

type Stack{T}
    store::Deque{T}
end

Stack{T}(ty::Type{T}) = Stack(Deque{T}())
Stack{T}(ty::Type{T}, blksize::Integer) = Stack(Deque{T}(blksize))

isempty(s::Stack) = isempty(s.store)
length(s::Stack) = length(s.store)

top(s::Stack) = back(s.store)

function push!(s::Stack, x)
    push!(s.store, x)
    s
end

start(s::Stack) = start(s.store)
next(s::Stack,i) = next(s.store, i)
done(s::Stack,i) = done(s.store, i)

pop!(s::Stack) = pop!(s.store)
