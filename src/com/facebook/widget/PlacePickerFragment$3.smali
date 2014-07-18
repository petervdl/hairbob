.class Lcom/facebook/widget/PlacePickerFragment$3;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, "error":Lcom/facebook/FacebookException;
    :try_start_3
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/facebook/widget/PlacePickerFragment;->loadData(Z)V
    :try_end_9
    .catch Lcom/facebook/FacebookException; {:try_start_3 .. :try_end_9} :catch_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_4b
    .catchall {:try_start_3 .. :try_end_9} :catchall_72

    .line 455
    if-eqz v1, :cond_18

    .line 456
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 457
    .local v4, "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    if-eqz v4, :cond_19

    .line 458
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-interface {v4, v5, v1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    .line 464
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :cond_18
    :goto_18
    return-void

    .line 460
    .restart local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :cond_19
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v6, "PlacePickerFragment"

    const-string/jumbo v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 450
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :catch_29
    move-exception v3

    .line 451
    .local v3, "fe":Lcom/facebook/FacebookException;
    move-object v1, v3

    .line 455
    if-eqz v1, :cond_18

    .line 456
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 457
    .restart local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    if-eqz v4, :cond_3b

    .line 458
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-interface {v4, v5, v1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 460
    :cond_3b
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v6, "PlacePickerFragment"

    const-string/jumbo v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 452
    .end local v3    # "fe":Lcom/facebook/FacebookException;
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :catch_4b
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_72

    .line 455
    .end local v1    # "error":Lcom/facebook/FacebookException;
    .local v2, "error":Lcom/facebook/FacebookException;
    if-eqz v2, :cond_93

    .line 456
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 457
    .restart local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    if-eqz v4, :cond_62

    .line 458
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-interface {v4, v5, v2}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    :goto_60
    move-object v1, v2

    .line 462
    .end local v2    # "error":Lcom/facebook/FacebookException;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    goto :goto_18

    .line 460
    .end local v1    # "error":Lcom/facebook/FacebookException;
    .restart local v2    # "error":Lcom/facebook/FacebookException;
    :cond_62
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v6, "PlacePickerFragment"

    const-string/jumbo v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lcom/facebook/FacebookException;
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    :catchall_72
    move-exception v5

    if-eqz v1, :cond_82

    .line 456
    iget-object v6, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-virtual {v6}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 457
    .restart local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    if-eqz v4, :cond_83

    .line 458
    iget-object v6, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-interface {v4, v6, v1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    .line 462
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :cond_82
    :goto_82
    throw v5

    .line 460
    .restart local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    :cond_83
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v7, "PlacePickerFragment"

    const-string/jumbo v8, "Error loading data : %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_82

    .end local v1    # "error":Lcom/facebook/FacebookException;
    .end local v4    # "onErrorListener":Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "error":Lcom/facebook/FacebookException;
    :cond_93
    move-object v1, v2

    .end local v2    # "error":Lcom/facebook/FacebookException;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    goto :goto_18
.end method
