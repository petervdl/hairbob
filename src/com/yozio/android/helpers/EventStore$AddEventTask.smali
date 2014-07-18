.class Lcom/yozio/android/helpers/EventStore$AddEventTask;
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
    name = "AddEventTask"
.end annotation


# instance fields
.field private final _forceFlush:Z

.field private final _name:Ljava/lang/String;

.field private final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _value:Ljava/lang/String;

.field private final _yozioEventStore:Lcom/yozio/android/helpers/EventStore;

.field final synthetic this$0:Lcom/yozio/android/helpers/EventStore;


# direct methods
.method constructor <init>(Lcom/yozio/android/helpers/EventStore;Lcom/yozio/android/helpers/EventStore;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 7
    .param p2, "yozioEventStore"    # Lcom/yozio/android/helpers/EventStore;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p6, "forceFlush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yozio/android/helpers/EventStore;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p5, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->this$0:Lcom/yozio/android/helpers/EventStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_yozioEventStore:Lcom/yozio/android/helpers/EventStore;

    .line 196
    iput-object p3, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_name:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_value:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_properties:Ljava/util/HashMap;

    .line 199
    iput-boolean p6, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_forceFlush:Z

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_yozioEventStore:Lcom/yozio/android/helpers/EventStore;

    iget-object v1, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_value:Ljava/lang/String;

    iget-object v3, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_properties:Ljava/util/HashMap;

    iget-boolean v4, p0, Lcom/yozio/android/helpers/EventStore$AddEventTask;->_forceFlush:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yozio/android/helpers/EventStore;->doAdd(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 205
    return-void
.end method
