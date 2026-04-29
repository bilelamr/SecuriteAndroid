.class public Lcl/json/RNShareModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNShareModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/json/RNShareModule$SHARES;
    }
.end annotation


# static fields
.field public static final SHARE_REQUEST_CODE:I = 0x41cd


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 110
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 111
    iput-object p1, p0, Lcl/json/RNShareModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {}, Lcl/json/RNShareModule$SHARES;->values()[Lcl/json/RNShareModule$SHARES;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 124
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNShare"

    return-object v0
.end method

.method public isBase64File(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "data"

    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ERROR"

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isPackageInstalled(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcl/json/RNShareModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1, v2}, Lcl/json/social/ShareIntent;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x41cd

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "CANCELED"

    aput-object p3, p1, p2

    invoke-static {p2, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p2, p3, p4}, Lcl/json/RNShareModule;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ERROR"

    .line 131
    invoke-static {p3, p2}, Lcl/json/social/TargetChosenReceiver;->registerCallbacks(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 133
    :try_start_0
    new-instance v1, Lcl/json/social/GenericShare;

    iget-object v2, p0, Lcl/json/RNShareModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v1, v2}, Lcl/json/social/GenericShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 134
    invoke-virtual {v1, p1}, Lcl/json/social/GenericShare;->open(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p2, p2, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    invoke-static {p3, p2}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "not_available"

    aput-object p2, p1, p3

    .line 138
    invoke-static {p3, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public shareSingle(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ERROR"

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SHARE SINGLE METHOD"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    invoke-static {p3, p2}, Lcl/json/social/TargetChosenReceiver;->registerCallbacks(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const-string p2, "social"

    .line 150
    invoke-static {p2, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 152
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcl/json/RNShareModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p2, p3}, Lcl/json/RNShareModule$SHARES;->getShareClass(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcl/json/social/ShareIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 153
    instance-of p3, p2, Lcl/json/social/ShareIntent;

    if-eqz p3, :cond_0

    .line 154
    invoke-virtual {p2, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 156
    :cond_0
    new-instance p1, Landroid/content/ActivityNotFoundException;

    const-string p2, "Invalid share activity"

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 163
    :goto_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v2, p2}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    goto :goto_2

    .line 159
    :goto_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v2, p2}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "key \'social\' missing in options"

    aput-object p2, p1, v2

    .line 168
    invoke-static {v2, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
