.class Lcom/airbnb/android/activities/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;

.field final synthetic val$delayIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$10;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/MainActivity$10;->val$delayIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$10;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$10;->val$delayIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1368
    return-void
.end method
