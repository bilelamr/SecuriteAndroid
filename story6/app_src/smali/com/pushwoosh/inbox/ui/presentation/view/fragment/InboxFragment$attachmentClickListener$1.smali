.class final Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InboxFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;->invoke(Ljava/lang/String;Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-static {v0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->access$onAttachmentClicked(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
