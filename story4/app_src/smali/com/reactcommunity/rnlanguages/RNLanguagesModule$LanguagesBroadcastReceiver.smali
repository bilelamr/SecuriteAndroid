.class Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNLanguagesModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactcommunity/rnlanguages/RNLanguagesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagesBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactcommunity/rnlanguages/RNLanguagesModule;


# direct methods
.method private constructor <init>(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;->this$0:Lcom/reactcommunity/rnlanguages/RNLanguagesModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;Lcom/reactcommunity/rnlanguages/RNLanguagesModule$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;-><init>(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;->this$0:Lcom/reactcommunity/rnlanguages/RNLanguagesModule;

    invoke-static {p1}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->access$100(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;)V

    :cond_0
    return-void
.end method
