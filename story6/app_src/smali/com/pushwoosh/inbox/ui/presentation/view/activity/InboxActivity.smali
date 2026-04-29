.class public Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InboxActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxActivity.kt\ncom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity$Companion;

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "pushwoosh.inbox.ui.InboxActivity.InboxFragment"

.field public static final TAG:Ljava/lang/String; = "pushwoosh.inbox.ui.InboxActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->Companion:Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final setColorActionBar()V
    .locals 3

    .line 86
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBarBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private final setColorHomeButton()V
    .locals 4

    .line 65
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBarAccentColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    sget v1, Lcom/pushwoosh/inbox/ui/R$drawable;->abc_ic_ab_back_material:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private final setTextColorBar()V
    .locals 5

    .line 78
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBarTextColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final setTitle()V
    .locals 2

    .line 73
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBarTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected attachInboxFragment()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "pushwoosh.inbox.ui.InboxActivity.InboxFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 104
    :cond_1
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;-><init>()V

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 108
    sget v2, Lcom/pushwoosh/inbox/ui/R$id;->inboxContentContainer:I

    invoke-virtual {v3, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/pushwoosh/inbox/ui/R$layout;->pw_activity_inbox:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->setColorActionBar()V

    .line 57
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->setTitle()V

    .line 58
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->setTextColorBar()V

    .line 59
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->setColorHomeButton()V

    .line 61
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;->attachInboxFragment()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x102002c

    if-nez v0, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_2
    return p1
.end method
