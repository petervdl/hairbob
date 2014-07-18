.class public Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;
.super Ljava/lang/Object;
.source "FlaggableContentJSONVisitor.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/GroupContentVisitor;


# instance fields
.field dataObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asJSON()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v1, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "user_flag"

    iget-object v3, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    .line 42
    :goto_d
    return-object v1

    .line 39
    :catch_e
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method

.method public visit(Lcom/airbnb/android/models/groups/Content;)V
    .registers 6
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    .line 28
    :try_start_7
    iget-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    const-string/jumbo v2, "flaggable_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    const-string/jumbo v2, "flaggable_type"

    const-string/jumbo v3, "content"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    .line 33
    :goto_1e
    return-void

    .line 30
    :catch_1f
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public visit(Lcom/airbnb/android/models/groups/Event;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    .line 17
    :try_start_7
    iget-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    const-string/jumbo v2, "flaggable_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Event;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->dataObj:Lorg/json/JSONObject;

    const-string/jumbo v2, "flaggable_type"

    const-string/jumbo v3, "event"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    .line 22
    :goto_1e
    return-void

    .line 19
    :catch_1f
    move-exception v0

    .line 20
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method
