.class public Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AttachmentActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$Companion;

.field public static final attachmentUrlExtra:Ljava/lang/String; = "ATTACHMENT_URL_EXTRA"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->Companion:Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$onBackPressed$s-1026320014(Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;)V
    .locals 0

    .line 12
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/pushwoosh/inbox/ui/R$layout;->pw_activity_attachment:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ATTACHMENT_URL_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 28
    sget v0, Lcom/pushwoosh/inbox/ui/R$id;->attachment:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 32
    :cond_0
    sget-object p1, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;

    invoke-virtual {p1, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;->generateColorScheme(Landroid/content/Context;)Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    .line 34
    sget p1, Lcom/pushwoosh/inbox/ui/R$id;->container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity$onCreate$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/activity/AttachmentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string p1, "colorSchemeProvider"

    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
