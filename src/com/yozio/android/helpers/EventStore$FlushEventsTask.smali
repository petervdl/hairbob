.class Lcom/yozio/android/helpers/EventStore$FlushEventsTask;
.super Ljava/lang/Object;
.source "EventStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yozio/android/helpers/EventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlushEventsTask"
.end annotation


# instance fields
.field private final _yozioEventStore:Lcom/yozio/android/helpers/EventStore;

.field final synthetic this$0:Lcom/yozio/android/helpers/EventStore;


# direct methods
.method constructor <init>(Lcom/yozio/android/helpers/EventStore;Lcom/yozio/android/helpers/EventStore;)V
    .registers 3
    .param p2, "yozioEventStore"    # Lcom/yozio/android/helpers/EventStore;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yozio/android/helpers/EventStore$FlushEventsTask;->this$0:Lcom/yozio/android/helpers/EventStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/yozio/android/helpers/EventStore$FlushEventsTask;->_yozioEventStore:Lcom/yozio/android/helpers/EventStore;

    .line 214
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yozio/android/helpers/EventStore$FlushEventsTask;->_yozioEventStore:Lcom/yozio/android/helpers/EventStore;

    invoke-virtual {v0}, Lcom/yozio/android/helpers/EventStore;->doFlush()V

    .line 219
    return-void
.end method
