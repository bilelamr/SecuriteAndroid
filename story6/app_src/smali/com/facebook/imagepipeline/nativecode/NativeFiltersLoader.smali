.class public Lcom/facebook/imagepipeline/nativecode/NativeFiltersLoader;
.super Ljava/lang/Object;
.source "NativeFiltersLoader.java"


# direct methods
.method public static load()V
    .locals 1

    const-string v0, "native-filters"

    .line 16
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method
