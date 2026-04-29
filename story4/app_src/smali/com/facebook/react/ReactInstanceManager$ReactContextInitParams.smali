.class Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/ReactInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactContextInitParams"
.end annotation


# instance fields
.field private final mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    .line 180
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/facebook/react/bridge/JSBundleLoader;

    iput-object p3, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    return-void
.end method


# virtual methods
.method public getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    return-object v0
.end method

.method public getJsExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    return-object v0
.end method
