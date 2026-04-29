.class public final synthetic Lio/invertase/firebase/common/-$$Lambda$ReactNativeFirebaseEventEmitter$pUvWN2zJaz7GrvF1CSXF4-ivN7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

.field private final synthetic f$1:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/common/-$$Lambda$ReactNativeFirebaseEventEmitter$pUvWN2zJaz7GrvF1CSXF4-ivN7o;->f$0:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    iput-object p2, p0, Lio/invertase/firebase/common/-$$Lambda$ReactNativeFirebaseEventEmitter$pUvWN2zJaz7GrvF1CSXF4-ivN7o;->f$1:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/invertase/firebase/common/-$$Lambda$ReactNativeFirebaseEventEmitter$pUvWN2zJaz7GrvF1CSXF4-ivN7o;->f$0:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    iget-object v1, p0, Lio/invertase/firebase/common/-$$Lambda$ReactNativeFirebaseEventEmitter$pUvWN2zJaz7GrvF1CSXF4-ivN7o;->f$1:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->lambda$attachReactContext$0$ReactNativeFirebaseEventEmitter(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method
