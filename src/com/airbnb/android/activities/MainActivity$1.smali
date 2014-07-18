.class Lcom/airbnb/android/activities/MainActivity$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$1;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 340
    new-instance v0, Lcom/airbnb/android/requests/DomainsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/DomainsRequest;-><init>(Z)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/DomainsRequest;->execute()V

    .line 341
    invoke-static {}, Lcom/airbnb/android/requests/AirLocationRequest;->forLastMinute()Lcom/airbnb/android/requests/AirLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirLocationRequest;->execute()V

    .line 342
    return-void
.end method
