.class Lcom/airbnb/android/views/NightsSelector$1;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSelector;->init(Landroid/content/Context;)V
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
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$1;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$1;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$1;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, v1, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    # invokes: Lcom/airbnb/android/views/NightsSelector;->snapToPoint(I)V
    invoke-static {v0, v1}, Lcom/airbnb/android/views/NightsSelector;->access$000(Lcom/airbnb/android/views/NightsSelector;I)V

    .line 71
    return-void
.end method
