.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-object p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-object v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$setUserId$5$UniversalFirebaseAnalyticsModule(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
