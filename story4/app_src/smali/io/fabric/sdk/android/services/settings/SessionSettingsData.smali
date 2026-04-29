.class public Lio/fabric/sdk/android/services/settings/SessionSettingsData;
.super Ljava/lang/Object;
.source "SessionSettingsData.java"


# instance fields
.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I


# direct methods
.method public constructor <init>(IIIIIZI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 43
    iput p7, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCompleteSessionsCount:I

    return-void
.end method
