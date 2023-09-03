package pool

import (
	"errors"
	"log/slog"

	"github.com/panjf2000/ants/v2"
)

var ErrPoolNotInit = errors.New("DefaultPool not init yet")

var defaultPool *ants.Pool

func init() {
	var err error
	defaultPool, err = ants.NewPool(100)
	if err != nil {
		panic(err)
	}
}

func Submit(task func()) error {
	slog.Info("pool submit task", "cap", defaultPool.Cap(), "waiting", defaultPool.Waiting(), "running", defaultPool.Running())
	return defaultPool.Submit(task)
}
