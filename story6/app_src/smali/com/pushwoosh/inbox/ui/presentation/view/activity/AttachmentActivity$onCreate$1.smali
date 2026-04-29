.class final Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$onCreate$1;
.super Ljava/lang/Object;
.source "AttachmentActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$onCreate$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$onCreate$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;

    invoke-static {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->access$onBackPressed$s-1026320014(Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;)V

    return-void
.end method
