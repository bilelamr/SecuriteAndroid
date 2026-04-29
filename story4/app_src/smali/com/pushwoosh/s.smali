.class public Lcom/pushwoosh/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "s"


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lcom/pushwoosh/internal/utils/d;

.field private final h:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final i:Lcom/pushwoosh/repository/i;

.field private final j:Lcom/pushwoosh/internal/utils/c;

.field private final k:Lcom/pushwoosh/repository/s;

.field private final l:Lcom/pushwoosh/notification/e;

.field private final m:Lcom/pushwoosh/inapp/c;

.field private final n:Lcom/pushwoosh/repository/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/i;Lcom/pushwoosh/internal/utils/c;Lcom/pushwoosh/repository/s;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/repository/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/pushwoosh/s;->g:Lcom/pushwoosh/internal/utils/d;

    iput-object p2, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    iput-object p3, p0, Lcom/pushwoosh/s;->i:Lcom/pushwoosh/repository/i;

    iput-object p4, p0, Lcom/pushwoosh/s;->j:Lcom/pushwoosh/internal/utils/c;

    iput-object p5, p0, Lcom/pushwoosh/s;->k:Lcom/pushwoosh/repository/s;

    iput-object p6, p0, Lcom/pushwoosh/s;->l:Lcom/pushwoosh/notification/e;

    iput-object p7, p0, Lcom/pushwoosh/s;->m:Lcom/pushwoosh/inapp/c;

    iput-object p8, p0, Lcom/pushwoosh/s;->n:Lcom/pushwoosh/repository/d;

    return-void
.end method

.method private a(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/s;->j:Lcom/pushwoosh/internal/utils/c;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/c;->b()V

    iget-object v0, p0, Lcom/pushwoosh/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/s;->i:Lcom/pushwoosh/repository/i;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/pushwoosh/repository/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/s;->k:Lcom/pushwoosh/repository/s;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/s;->b()V

    :cond_0
    return-void
.end method

.method private a(Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/internal/platform/a$a;",
            ">;",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/notification/e$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initHwid"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/w;->a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)Lcom/pushwoosh/internal/platform/utils/f;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/platform/utils/a;->a(Lcom/pushwoosh/internal/platform/utils/f;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/s;Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/s;->l:Lcom/pushwoosh/notification/e;

    invoke-virtual {p0}, Lcom/pushwoosh/notification/e;->e()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/pushwoosh/s;->a(Ljava/lang/String;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/platform/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/s;->h()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/s;Lcom/pushwoosh/notification/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/s;->i()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/internal/platform/a$a;",
            ">;",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/notification/e$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pushwoosh/s;->c()V

    new-instance p1, Lcom/pushwoosh/internal/event/InitHwidEvent;

    iget-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/pushwoosh/internal/event/InitHwidEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/pushwoosh/s;->a(Landroid/util/Pair;)V

    invoke-direct {p0}, Lcom/pushwoosh/s;->f()V

    invoke-virtual {p2}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    invoke-virtual {p3}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/platform/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/s;->g()V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/s;Lcom/pushwoosh/notification/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/s;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/s;->m:Lcom/pushwoosh/inapp/c;

    invoke-virtual {v1, v0}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/platform/a$a;)V
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/s;Lcom/pushwoosh/notification/e$a;)V
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/s;->k:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->c()V

    iget-object v0, p0, Lcom/pushwoosh/s;->k:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->d()V

    iget-object v0, p0, Lcom/pushwoosh/s;->n:Lcom/pushwoosh/repository/d;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/d;->a()V

    iget-object v0, p0, Lcom/pushwoosh/s;->m:Lcom/pushwoosh/inapp/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/c;->a()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HWID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pushwoosh/s;->h:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pushwoosh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PushwooshModule"

    const-string v1, "onApplicationCreated"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pushwoosh/s;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->getInstance()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->type()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "This is %s device"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->g:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/internal/Plugin;

    invoke-interface {v1}, Lcom/pushwoosh/internal/Plugin;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    const-class v0, Lcom/pushwoosh/notification/e$a;

    const-class v1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-static {p0}, Lcom/pushwoosh/x;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " onAppReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pushwoosh/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/pushwoosh/y;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/pushwoosh/internal/event/Emitter;->forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v1

    invoke-static {v0}, Lcom/pushwoosh/internal/event/Emitter;->forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/event/Emitter;->when(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v0

    invoke-static {p0}, Lcom/pushwoosh/z;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/event/Emitter;->bind(Lcom/pushwoosh/internal/event/EventListener;)V

    :goto_0
    const-class v0, Lcom/pushwoosh/BootReceiver$DeviceBootedEvent;

    invoke-static {p0}, Lcom/pushwoosh/aa;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "onAppOpen"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->j:Lcom/pushwoosh/internal/utils/c;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/c;->b()V

    iget-object v0, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/pushwoosh/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/s;->i()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    const-string v0, "onAppReady"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/s;->i()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "sendAppOpenEndTagMigrate"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/s;->i:Lcom/pushwoosh/repository/i;

    iget-object v1, p0, Lcom/pushwoosh/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/repository/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->k:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-class v0, Lcom/pushwoosh/notification/e$a;

    invoke-static {}, Lcom/pushwoosh/internal/utils/PWLog;->init()V

    const-class v1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-static {p0}, Lcom/pushwoosh/t;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object v1

    invoke-static {p0}, Lcom/pushwoosh/u;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object v2

    invoke-static {v0}, Lcom/pushwoosh/internal/event/Emitter;->forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v0

    const-class v3, Lcom/pushwoosh/internal/event/InitHwidEvent;

    invoke-static {v3}, Lcom/pushwoosh/internal/event/Emitter;->forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pushwoosh/internal/event/Emitter;->when(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)Lcom/pushwoosh/internal/event/Emitter;

    move-result-object v0

    invoke-static {p0}, Lcom/pushwoosh/v;->a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pushwoosh/internal/event/Emitter;->bind(Lcom/pushwoosh/internal/event/EventListener;)V

    iget-object v0, p0, Lcom/pushwoosh/s;->l:Lcom/pushwoosh/notification/e;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->a()V

    invoke-direct {p0, v1, v2}, Lcom/pushwoosh/s;->a(Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V

    invoke-direct {p0}, Lcom/pushwoosh/s;->e()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
