.class final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "InboxAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    iput p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->getOnItemClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    iget v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;->$position:I

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
