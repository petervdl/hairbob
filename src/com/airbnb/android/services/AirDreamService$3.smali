.class Lcom/airbnb/android/services/AirDreamService$3;
.super Ljava/lang/Object;
.source "AirDreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/services/AirDreamService$3;->this$0:Lcom/airbnb/android/services/AirDreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService$3;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # invokes: Lcom/airbnb/android/services/AirDreamService;->setupDisplay()V
    invoke-static {v0}, Lcom/airbnb/android/services/AirDreamService;->access$200(Lcom/airbnb/android/services/AirDreamService;)V

    .line 119
    return-void
.end method
