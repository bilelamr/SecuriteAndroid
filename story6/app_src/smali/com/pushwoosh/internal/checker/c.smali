.class public Lcom/pushwoosh/internal/checker/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/checker/Checker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 2

    :try_start_0
    const-string v0, "androidx.core.app.JobIntentService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must include the following maven repository URL in project build.gradle:\n allprojects {\n    repositories {\n        jcenter()\n        google()\n    } \n}\nAlso all support libraries must be at least v26.0.1. For more info look at https://goo.gl/KZa9M4\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
