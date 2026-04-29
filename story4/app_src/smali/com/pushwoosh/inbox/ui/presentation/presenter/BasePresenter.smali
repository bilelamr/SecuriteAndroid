.class public Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;


# instance fields
.field private restore:Z

.field private viewEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getRestore()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->restore:Z

    return v0
.end method

.method protected final getViewEnable()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->viewEnable:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->restore:Z

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->restoreState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onDestroy(Z)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onViewCreated()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->viewEnable:Z

    return-void
.end method

.method public onViewDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->viewEnable:Z

    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final setRestore(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->restore:Z

    return-void
.end method

.method protected final setViewEnable(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->viewEnable:Z

    return-void
.end method
