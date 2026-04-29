.class public Lio/invertase/firebase/app/ReactNativeFirebaseAppInitProvider;
.super Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;
.source "ReactNativeFirebaseAppInitProvider.java"


# static fields
.field private static final EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String; = "io.invertase.firebase.reactnativefirebaseappinitprovider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "io.invertase.firebase.reactnativefirebaseappinitprovider"

    return-object v0
.end method
