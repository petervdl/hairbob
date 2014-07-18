.class Lcom/airbnb/android/views/NightsSelector$7;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSelector;->populateScrollViewWithViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/NightsSelector;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/NightsSelector;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$7;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$7;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # invokes: Lcom/airbnb/android/views/NightsSelector;->focusToNights()V
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSelector;->access$900(Lcom/airbnb/android/views/NightsSelector;)V

    .line 226
    return-void
.end method
