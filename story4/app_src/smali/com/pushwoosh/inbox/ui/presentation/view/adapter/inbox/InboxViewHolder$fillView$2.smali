.class final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;
.super Ljava/lang/Object;
.source "InboxViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->fillView(Lcom/pushwoosh/inbox/data/InboxMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bannerUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    iput-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;->$bannerUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->getAttachmentClickListener()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;->$bannerUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$2;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxBannerImage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "itemView.inboxBannerImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
