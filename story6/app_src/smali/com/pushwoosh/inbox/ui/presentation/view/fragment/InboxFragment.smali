.class public Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;
.super Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;
.source "InboxFragment.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxFragment.kt\ncom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment\n*L\n1#1,212:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private attachmentClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

.field private colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

.field private inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

.field private inboxPresenter:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$attachmentClickListener$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    return-object p0
.end method

.method public static final synthetic access$getInboxAdapter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "inboxAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getInboxPresenter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxPresenter:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "inboxPresenter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onAttachmentClicked(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->onAttachmentClicked(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setCallback$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    return-void
.end method

.method public static final synthetic access$setInboxAdapter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    return-void
.end method

.method public static final synthetic access$setInboxPresenter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxPresenter:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    return-void
.end method

.method private final onAttachmentClicked(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ATTACHMENT_URL_EXTRA"

    .line 202
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v1, Lcom/pushwoosh/inbox/ui/R$string;->pw_attachment_transition_id:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 p2, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 209
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private final updateContent(ZZZZ)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    const-string p1, "inboxError"

    const-string v3, "inboxEmpty"

    const-string v4, "inboxRecyclerView"

    if-eqz p2, :cond_2

    .line 174
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 175
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmpty:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxError:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-nez p4, :cond_3

    .line 178
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmpty:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxError:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 182
    :cond_3
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxError:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmpty:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 187
    :goto_2
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxTotalProgressBar:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string p2, "inboxTotalProgressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string p2, "inboxSwipeRefreshLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method static bridge synthetic updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_4

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 169
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent(ZZZZ)V

    return-void

    .line 0
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateContent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateMessageTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 193
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public failedLoadingInboxList(Lcom/pushwoosh/inbox/ui/presentation/data/UserError;)V
    .locals 7

    const-string v0, "userError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/data/UserError;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/data/UserError;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    .line 151
    invoke-static/range {v0 .. v6}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V

    .line 152
    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxErrorTextView:I

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "inboxErrorTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/presentation/data/UserError;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateMessageTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string p1, "inboxAdapter"

    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v0, p0

    .line 136
    invoke-static/range {v0 .. v6}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;-><init>(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;)V

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->addLifecycleListener(Lcom/pushwoosh/inbox/ui/presentation/lifecycle/LifecycleListener;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxPresenter:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;->generateColorScheme(Landroid/content/Context;)Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    .line 69
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p1, v1, v2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;-><init>(Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    return-void

    :cond_0
    const-string p1, "colorSchemeProvider"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/pushwoosh/inbox/ui/R$layout;->pw_fragment_inbox:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    const-string p2, "inboxAdapter"

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->setOnItemRemoved(Lkotlin/jvm/functions/Function1;)V

    .line 85
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz p1, :cond_a

    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->setOnItemStartSwipe(Lkotlin/jvm/functions/Function0;)V

    .line 86
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz p1, :cond_9

    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$3;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$3;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->setOnItemStopSwipe(Lkotlin/jvm/functions/Function0;)V

    .line 87
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz p1, :cond_8

    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$4;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$4;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    invoke-virtual {p1, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function1;)V

    .line 89
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 90
    sget v1, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "inboxRecyclerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    sget v1, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    sget-object v1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, v2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    const-string v2, "colorSchemeProvider"

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    invoke-direct {v3, v4, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 105
    :cond_1
    new-instance p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    iget-object v5, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    .line 106
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->callback:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 107
    sget p2, Lcom/pushwoosh/inbox/ui/R$id;->inboxRecyclerView:I

    invoke-virtual {p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 109
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;

    invoke-direct {p2, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 114
    sget-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListErrorImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 115
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxErrorImageView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListErrorImage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 117
    :cond_2
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxErrorImageView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListErrorImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_0
    sget-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListErrorImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 121
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmptyImageView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListEmptyImage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 123
    :cond_3
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmptyImageView:I

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListEmptyImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    .line 105
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_b
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public showEmptyView()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, p0

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V

    .line 164
    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "inboxSwipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 165
    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxEmptyTextView:I

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "inboxEmptyTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListEmptyText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateMessageTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showList(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inboxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->inboxAdapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->setCollection(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, p0

    .line 159
    invoke-static/range {v1 .. v7}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "inboxAdapter"

    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public showSwipeRefreshProgress()V
    .locals 2

    .line 128
    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "inboxSwipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showTotalProgress()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->updateContent$default(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;ZZZZILjava/lang/Object;)V

    return-void
.end method
