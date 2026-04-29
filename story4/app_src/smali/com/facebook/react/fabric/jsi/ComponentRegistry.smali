.class public Lcom/facebook/react/fabric/jsi/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/facebook/react/fabric/jsi/ComponentRegistry;->initHybrid()Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method
