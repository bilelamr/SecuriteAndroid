.class Lcom/pushwoosh/appevents/PushwooshAppEvents$a$2;
.super Landroid/app/FragmentManager$FragmentLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/appevents/PushwooshAppEvents$a;


# direct methods
.method constructor <init>(Lcom/pushwoosh/appevents/PushwooshAppEvents$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$2;->a:Lcom/pushwoosh/appevents/PushwooshAppEvents$a;

    invoke-direct {p0}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    iget-object p1, p0, Lcom/pushwoosh/appevents/PushwooshAppEvents$a$2;->a:Lcom/pushwoosh/appevents/PushwooshAppEvents$a;

    invoke-static {p1}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a(Lcom/pushwoosh/appevents/PushwooshAppEvents$a;)V

    return-void
.end method
