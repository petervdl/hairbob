.class Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;
.super Ljava/lang/Object;
.source "MessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/MessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageThreadItem"
.end annotation


# instance fields
.field private thread:Lcom/airbnb/android/models/MessageThread;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;)Lcom/airbnb/android/models/MessageThread;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;->thread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method
