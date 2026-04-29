.class final synthetic Lcom/pushwoosh/badge/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/badge/b;->a:I

    return-void
.end method

.method public static a(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/badge/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/badge/b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/pushwoosh/badge/b;->a:I

    invoke-static {v0}, Lcom/pushwoosh/badge/PushwooshBadge;->a(I)V

    return-void
.end method
