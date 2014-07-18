.class Lcom/airbnb/android/views/DotsCounter$1;
.super Ljava/lang/Object;
.source "DotsCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/DotsCounter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/DotsCounter;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/views/DotsCounter$1;->this$0:Lcom/airbnb/android/views/DotsCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/airbnb/android/views/DotsCounter$1;->this$0:Lcom/airbnb/android/views/DotsCounter;

    # invokes: Lcom/airbnb/android/views/DotsCounter;->setupDots()V
    invoke-static {v0}, Lcom/airbnb/android/views/DotsCounter;->access$000(Lcom/airbnb/android/views/DotsCounter;)V

    .line 97
    return-void
.end method
