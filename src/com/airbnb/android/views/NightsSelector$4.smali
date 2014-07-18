.class Lcom/airbnb/android/views/NightsSelector$4;
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
    .line 118
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$4;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$4;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$4;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, v1, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    # setter for: Lcom/airbnb/android/views/NightsSelector;->mTopBottomPadding:I
    invoke-static {v0, v1}, Lcom/airbnb/android/views/NightsSelector;->access$602(Lcom/airbnb/android/views/NightsSelector;I)I

    .line 122
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$4;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$4;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, v1, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/airbnb/android/views/NightsSelector;->populateScrollViewWithViews(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/views/NightsSelector;->access$700(Lcom/airbnb/android/views/NightsSelector;Landroid/content/Context;)V

    .line 123
    return-void
.end method
