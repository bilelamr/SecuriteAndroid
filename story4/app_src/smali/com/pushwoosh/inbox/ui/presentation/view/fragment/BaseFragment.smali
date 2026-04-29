.class public Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/lifecycle/Lifecycle;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1483#2,2:81\n1483#2,2:83\n1483#2,2:85\n1483#2,2:87\n1483#2,2:89\n1483#2,2:91\n1483#2,2:93\n*E\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment\n*L\n48#1,2:81\n53#1,2:83\n58#1,2:85\n63#1,2:87\n68#1,2:89\n73#1,2:91\n78#1,2:93\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public addLifecycleListener(Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;)V
    .locals 1

    const-string v0, "lifecycleListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 48
    invoke-interface {v1, p1}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onDestroy(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 73
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 73
    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onViewDestroy()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 68
    invoke-interface {v1, p1}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 58
    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 63
    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;

    .line 53
    invoke-interface {p2}, Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;->onViewCreated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLifecycleListener(Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;)V
    .locals 1

    const-string v0, "lifecycleListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
