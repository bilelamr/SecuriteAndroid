.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-object p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-object v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$setAnalyticsCollectionEnabled$1$UniversalFirebaseAnalyticsModule(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
