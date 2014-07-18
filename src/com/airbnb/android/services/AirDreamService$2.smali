.class Lcom/airbnb/android/services/AirDreamService$2;
.super Ljava/lang/Object;
.source "AirDreamService.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/AirDreamService;->setupDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/AirDreamService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/AirDreamService;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/services/AirDreamService$2;->this$0:Lcom/airbnb/android/services/AirDreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 106
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 3
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 111
    return-void
.end method
