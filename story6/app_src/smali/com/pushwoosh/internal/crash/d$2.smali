.class final Lcom/pushwoosh/internal/crash/d$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/crash/d;->c(Lcom/pushwoosh/internal/crash/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pushwoosh/internal/crash/f;


# direct methods
.method constructor <init>(ZLcom/pushwoosh/internal/crash/f;)V
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/internal/crash/d$2;->a:Z

    iput-object p2, p0, Lcom/pushwoosh/internal/crash/d$2;->b:Lcom/pushwoosh/internal/crash/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pushwoosh/internal/crash/d;->b()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/pushwoosh/internal/crash/d;->a([Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pushwoosh/internal/crash/d$2;->a:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/pushwoosh/internal/crash/d$2;->b:Lcom/pushwoosh/internal/crash/f;

    invoke-static {v2, v3}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/lang/String;Lcom/pushwoosh/internal/crash/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/crash/d$2;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
