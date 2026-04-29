.class public Lcom/pushwoosh/function/Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/pushwoosh/exception/PushwooshException;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/exception/PushwooshException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/function/Result;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/pushwoosh/function/Result;->b:Lcom/pushwoosh/exception/PushwooshException;

    return-void
.end method

.method public static from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">(TT;TE;)",
            "Lcom/pushwoosh/function/Result<",
            "TT;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/function/Result;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/function/Result;-><init>(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)V

    return-object v0
.end method

.method public static fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">(TT;)",
            "Lcom/pushwoosh/function/Result<",
            "TT;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/function/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/function/Result;-><init>(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)V

    return-object v0
.end method

.method public static fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">(TE;)",
            "Lcom/pushwoosh/function/Result<",
            "TT;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/function/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/pushwoosh/function/Result;-><init>(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/function/Result;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Lcom/pushwoosh/exception/PushwooshException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/function/Result;->b:Lcom/pushwoosh/exception/PushwooshException;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/function/Result;->b:Lcom/pushwoosh/exception/PushwooshException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
