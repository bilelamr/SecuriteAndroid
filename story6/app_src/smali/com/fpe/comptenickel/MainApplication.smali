.class public Lcom/fpe/comptenickel/MainApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "MainApplication.java"

# interfaces
.implements Lcl/json/ShareApplication;
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 31
    new-instance v0, Lcom/fpe/comptenickel/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/fpe/comptenickel/MainApplication$1;-><init>(Lcom/fpe/comptenickel/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/fpe/comptenickel/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method static synthetic access$000(Lcom/fpe/comptenickel/MainApplication;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/fpe/comptenickel/MainApplication;->updateUnreadInboxMessages()V

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private updateUnreadInboxMessages()V
    .locals 1

    .line 73
    new-instance v0, Lcom/fpe/comptenickel/MainApplication$3;

    invoke-direct {v0, p0}, Lcom/fpe/comptenickel/MainApplication$3;-><init>(Lcom/fpe/comptenickel/MainApplication;)V

    invoke-static {v0}, Lcom/pushwoosh/inbox/PushwooshInbox;->unreadMessagesCount(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method


# virtual methods
.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.fpe.comptenickel.provider"

    return-object v0
.end method

.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/fpe/comptenickel/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 62
    invoke-static {p0}, Lcom/fpe/comptenickel/MainApplication;->initializeFlipper(Landroid/content/Context;)V

    .line 63
    const-class v0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    new-instance v1, Lcom/fpe/comptenickel/MainApplication$2;

    invoke-direct {v1, p0}, Lcom/fpe/comptenickel/MainApplication$2;-><init>(Lcom/fpe/comptenickel/MainApplication;)V

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method
