.class public abstract Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/view/ViewGroup;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/ViewGroup;",
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(pare\u2026(layoutId, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;

    return-void
.end method


# virtual methods
.method public final bindView()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract fillView(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;I)V"
        }
    .end annotation
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 2

    .line 148
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onAttach$pushwoosh_inbox_ui_release()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getMOnItemClickListener()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCreate()V
    .locals 0

    return-void
.end method

.method public final onDetach$pushwoosh_inbox_ui_release()V
    .locals 0

    return-void
.end method

.method public final recycled$pushwoosh_inbox_ui_release()V
    .locals 0

    return-void
.end method
