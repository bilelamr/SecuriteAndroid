.class public final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;
.super Ljava/lang/Object;
.source "InboxViewHolder.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->fillView(Lcom/pushwoosh/inbox/data/InboxMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxImageView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    invoke-static {p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;->access$getColorSchemeProvider$p(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;)Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 87
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder$fillView$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
