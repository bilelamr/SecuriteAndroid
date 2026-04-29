.class public abstract Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder<",
        "TModel;>;Model:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final duration:J

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private lastPosition:I

.field private final mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TModel;>;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->context:Landroid/content/Context;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    .line 42
    sget-object p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$mOnItemClickListener$1;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$mOnItemClickListener$1;

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mOnItemClickListener:Lkotlin/jvm/functions/Function2;

    const-wide/16 v0, 0xfa

    .line 44
    iput-wide v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->duration:J

    .line 45
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->interpolator:Landroid/view/animation/Interpolator;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->lastPosition:I

    return-void
.end method


# virtual methods
.method public final addCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TModel;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final addItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method protected animateItem(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final clearCollection()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract createViewHolderInstance(Landroid/view/ViewGroup;I)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final getCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TModel;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getDuration()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->duration:J

    return-wide v0
.end method

.method protected final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TModel;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected final getMOnItemClickListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mOnItemClickListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->bindView()V

    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->fillView(Ljava/lang/Object;I)V

    .line 68
    iget v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->lastPosition:I

    if-le p2, v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->animateItem(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V

    .line 70
    iput p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->lastPosition:I

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/inbox/ui/utils/ViewExtensionKt;->clear(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->createViewHolderInstance(Landroid/view/ViewGroup;I)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->onCreate()V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onViewAttachedToWindow(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 121
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->onAttach$pushwoosh_inbox_ui_release()V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onViewDetachedFromWindow(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 126
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->onDetach$pushwoosh_inbox_ui_release()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onViewRecycled(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 131
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->recycled$pushwoosh_inbox_ui_release()V

    return-void
.end method

.method public final setCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TModel;>;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method protected final setMOnItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mOnItemClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->mOnItemClickListener:Lkotlin/jvm/functions/Function2;

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
