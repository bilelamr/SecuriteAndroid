.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showDevOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSDevModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "You\'re trying to enable HMR while Dev mode is off. Turning both HMR and the Dev mode on..."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 518
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setJSDevModeEnabled(Z)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setHotModuleReplacementEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->handleReloadJS()V

    return-void
.end method
