.class public final Lcom/pushwoosh/reactnativeplugin/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToTagsBundle(Lcom/facebook/react/bridge/ReadableMap;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    .line 23
    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putAll(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    return-object p0
.end method

.method public static stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 102
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 105
    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    .line 108
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static toArray(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;
    .locals 7

    const-string v0, "."

    const-string v1, "Could not convert object at index "

    const-string v2, "ReactNativePlugin"

    .line 67
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 68
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 69
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    .line 71
    :try_start_0
    sget-object v6, Lcom/pushwoosh/reactnativeplugin/ConversionUtil$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 88
    :pswitch_0
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    invoke-static {v5}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toArray(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 85
    :pswitch_1
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-static {v5}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 82
    :pswitch_2
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 79
    :pswitch_3
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    goto :goto_2

    .line 76
    :pswitch_4
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    goto :goto_2

    .line 73
    :pswitch_5
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 91
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "."

    const-string v1, "Could not convert object with key: "

    const-string v2, "ReactNativePlugin"

    .line 29
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v3

    .line 30
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :goto_0
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v6

    .line 35
    :try_start_0
    sget-object v7, Lcom/pushwoosh/reactnativeplugin/ConversionUtil$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 52
    :pswitch_0
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    invoke-static {v6}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toArray(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    invoke-static {v6}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 43
    :pswitch_3
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 40
    :pswitch_4
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 37
    :pswitch_5
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 55
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v6}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6

    const-string v0, "ReactNativePlugin"

    .line 149
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    const/4 v2, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 153
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushNull()V

    goto/16 :goto_1

    .line 156
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 157
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_1

    .line 158
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 159
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto/16 :goto_1

    .line 160
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 161
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushBoolean(Z)V

    goto/16 :goto_1

    .line 162
    :cond_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 163
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushInt(I)V

    goto :goto_1

    .line 164
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 165
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 167
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_6
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 169
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_1

    .line 171
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 174
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert object with index i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in array "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public static toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "ReactNativePlugin"

    .line 112
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 114
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 115
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 120
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 122
    :cond_0
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 123
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 124
    :cond_1
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 125
    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 126
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 127
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 128
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 129
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 131
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_5
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 133
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_6
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_7

    .line 135
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 137
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_8
    :goto_1
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert object with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method
