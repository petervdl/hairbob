.class public abstract Lcom/airbnb/android/persist/PrefsStore;
.super Ljava/lang/Object;
.source "PrefsStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/persist/PrefsStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/persist/PrefsStore;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/airbnb/android/persist/PrefsStore;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 22
    sget-object v0, Lcom/airbnb/android/persist/PrefsStore;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 23
    sget-object v0, Lcom/airbnb/android/persist/PrefsStore;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 24
    sget-object v0, Lcom/airbnb/android/persist/PrefsStore;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 27
    .local p0, "this":Lcom/airbnb/android/persist/PrefsStore;, "Lcom/airbnb/android/persist/PrefsStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getDefaultJson()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "jsonStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/persist/PrefsStore;->setData(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getDefaultJson()Ljava/lang/String;
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lcom/airbnb/android/persist/PrefsStore;, "Lcom/airbnb/android/persist/PrefsStore<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public abstract isValid(Ljava/lang/String;)Z
.end method

.method public final setData(Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/airbnb/android/persist/PrefsStore;, "Lcom/airbnb/android/persist/PrefsStore<TT;>;"
    invoke-virtual {p0, p1}, Lcom/airbnb/android/persist/PrefsStore;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getDefaultJson()Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_a
    :try_start_a
    sget-object v2, Lcom/airbnb/android/persist/PrefsStore;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/airbnb/android/persist/PrefsStore;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_a .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2d} :catch_38

    .line 52
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2d
    return-void

    .line 47
    :catch_2e
    move-exception v0

    .line 48
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    sget-object v2, Lcom/airbnb/android/persist/PrefsStore;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "icky JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 49
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_38
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/airbnb/android/persist/PrefsStore;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IO no go"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method
